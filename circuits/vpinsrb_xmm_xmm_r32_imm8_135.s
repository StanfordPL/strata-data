  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  vmovapd %xmm2, %xmm1               #  1     0     4      OPC=vmovapd_xmm_xmm  
  callq .move_032_016_ebx_r8w_r9w    #  2     0x4   5      OPC=callq_label      
  xchgb %r9b, %bl                    #  3     0x9   3      OPC=xchgb_r8_r8      
  callq .move_r9b_to_byte_7_of_ymm1  #  4     0xc   5      OPC=callq_label      
  retq                               #  5     0x11  1      OPC=retq             
                                                                                
.size target, .-target
