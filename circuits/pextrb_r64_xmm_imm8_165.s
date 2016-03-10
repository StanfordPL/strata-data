  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vxorpd %xmm10, %xmm10, %xmm0       #  1     0     5      OPC=vxorpd_xmm_xmm_xmm  
  cvtss2sil %xmm0, %ebx              #  2     0x5   4      OPC=cvtss2sil_r32_xmm   
  callq .move_byte_5_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label         
  movb %r8b, %bl                     #  4     0xe   3      OPC=movb_r8_r8          
  retq                               #  5     0x11  1      OPC=retq                
                                                                                   
.size target, .-target
