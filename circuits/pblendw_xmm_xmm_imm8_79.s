  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label     
  callq .move_032_064_r8d_r9d_rbx           #  2     0x5   5      OPC=callq_label     
  callq .move_r9b_to_byte_12_of_ymm1        #  3     0xa   5      OPC=callq_label     
  movsd %xmm2, %xmm1                        #  4     0xf   4      OPC=movsd_xmm_xmm   
  callq .move_byte_5_of_rbx_to_r8b          #  5     0x13  5      OPC=callq_label     
  movslq %r8d, %r9                          #  6     0x18  3      OPC=movslq_r64_r32  
  callq .move_r9b_to_byte_13_of_ymm1        #  7     0x1b  5      OPC=callq_label     
  retq                                      #  8     0x20  1      OPC=retq            
                                                                                      
.size target, .-target
