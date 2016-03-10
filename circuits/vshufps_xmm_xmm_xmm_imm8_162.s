  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovsldup %xmm2, %xmm1                          #  1     0     4      OPC=vmovsldup_xmm_xmm       
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm8, %xmm11, %xmm11                #  3     0x9   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsldup %xmm3, %xmm1                           #  4     0xe   4      OPC=movsldup_xmm_xmm        
  movsd %xmm11, %xmm1                             #  5     0x12  5      OPC=movsd_xmm_xmm           
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
