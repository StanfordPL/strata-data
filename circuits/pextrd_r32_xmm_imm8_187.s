  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  movshdup %xmm1, %xmm4                     #  1     0     4      OPC=movshdup_xmm_xmm       
  vunpckhpd %xmm4, %xmm1, %xmm3             #  2     0x4   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  3     0x8   5      OPC=callq_label            
  movl %r8d, %ebx                           #  4     0xd   3      OPC=movl_r32_r32           
  retq                                      #  5     0x10  1      OPC=retq                   
                                                                                             
.size target, .-target
