  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vmovq %xmm3, %xmm1                  #  1     0     4      OPC=vmovq_xmm_xmm         
  vmovshdup %xmm2, %xmm8              #  2     0x4   4      OPC=vmovshdup_xmm_xmm     
  callq .move_byte_25_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label           
  callq .move_r8b_to_byte_30_of_ymm1  #  4     0xd   5      OPC=callq_label           
  callq .move_r8b_to_byte_30_of_ymm1  #  5     0x12  5      OPC=callq_label           
  vmovlhps %xmm1, %xmm8, %xmm1        #  6     0x17  4      OPC=vmovlhps_xmm_xmm_xmm  
  retq                                #  7     0x1b  1      OPC=retq                  
                                                                                      
.size target, .-target
