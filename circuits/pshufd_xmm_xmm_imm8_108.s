  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  vmovddup %xmm2, %xmm8                           #  1     0     4      OPC=vmovddup_xmm_xmm        
  vmovshdup %xmm2, %xmm11                         #  2     0x4   4      OPC=vmovshdup_xmm_xmm       
  vmovhlps %xmm2, %xmm2, %xmm10                   #  3     0x8   4      OPC=vmovhlps_xmm_xmm_xmm    
  vpunpckhdq %xmm8, %xmm11, %xmm9                 #  4     0xc   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label             
  retq                                            #  6     0x16  1      OPC=retq                    
                                                                                                    
.size target, .-target
