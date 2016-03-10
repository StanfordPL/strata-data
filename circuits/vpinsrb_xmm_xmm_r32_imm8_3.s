  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  movswq %bx, %r9                    #  1     0     4      OPC=movswq_r64_r16          
  vcvtsi2ssl %ebx, %xmm2, %xmm1      #  2     0x4   4      OPC=vcvtsi2ssl_xmm_xmm_r32  
  movupd %xmm2, %xmm1                #  3     0x8   4      OPC=movupd_xmm_xmm          
  callq .move_r9b_to_byte_3_of_ymm1  #  4     0xc   5      OPC=callq_label             
  retq                               #  5     0x11  1      OPC=retq                    
                                                                                       
.size target, .-target
