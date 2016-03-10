  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  callq .move_byte_0_of_ymm1_to_r9b   #  1     0     5      OPC=callq_label         
  vmovdqa %xmm1, %xmm3                #  2     0x5   4      OPC=vmovdqa_xmm_xmm     
  callq .move_r9b_to_byte_17_of_ymm1  #  3     0x9   5      OPC=callq_label         
  vmovsd %xmm3, %xmm1, %xmm1          #  4     0xe   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                #  5     0x12  1      OPC=retq                
                                                                                    
.size target, .-target
