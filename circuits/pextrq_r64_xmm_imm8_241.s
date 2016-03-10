  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm3      #  2     0x5   5      OPC=callq_label           
  callq .move_r9b_to_byte_13_of_ymm1  #  3     0xa   5      OPC=callq_label           
  movdqa %xmm1, %xmm6                 #  4     0xf   4      OPC=movdqa_xmm_xmm        
  vmovhlps %xmm3, %xmm6, %xmm1        #  5     0x13  4      OPC=vmovhlps_xmm_xmm_xmm  
  movq %xmm1, %rbx                    #  6     0x17  5      OPC=movq_r64_xmm          
  retq                                #  7     0x1c  1      OPC=retq                  
                                                                                      
.size target, .-target
