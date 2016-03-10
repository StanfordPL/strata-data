  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  movsldup %xmm3, %xmm1                           #  1     0     4      OPC=movsldup_xmm_xmm        
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm1, %xmm7                  #  3     0x9   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vmovss %xmm8, %xmm2, %xmm12                     #  4     0xd   5      OPC=vmovss_xmm_xmm_xmm      
  vmovsd %xmm12, %xmm7, %xmm1                     #  5     0x12  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                            #  6     0x17  1      OPC=retq                    
                                                                                                    
.size target, .-target
