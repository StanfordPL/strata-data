  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  movsbl %bl, %r9d                   #  1     0     4      OPC=movsbl_r32_r8       
  vmaxpd %xmm2, %xmm2, %xmm13        #  2     0x4   4      OPC=vmaxpd_xmm_xmm_xmm  
  vminsd %xmm13, %xmm13, %xmm7       #  3     0x8   5      OPC=vminsd_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm7, %xmm1        #  4     0xd   5      OPC=vmovsd_xmm_xmm_xmm  
  callq .move_r9b_to_byte_6_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                               #  6     0x17  1      OPC=retq                
                                                                                   
.size target, .-target
