  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label      
  callq .move_128_064_xmm2_r8_r9            #  2     0x5   5      OPC=callq_label      
  popcntl %edx, %eax                        #  3     0xa   4      OPC=popcntl_r32_r32  
  vmovdqa %ymm2, %ymm1                      #  4     0xe   4      OPC=vmovdqa_ymm_ymm  
  cmovsw %dx, %r9w                          #  5     0x12  5      OPC=cmovsw_r16_r16   
  callq .move_064_128_r8_r9_xmm1            #  6     0x17  5      OPC=callq_label      
  retq                                      #  7     0x1c  1      OPC=retq             
                                                                                       
.size target, .-target
