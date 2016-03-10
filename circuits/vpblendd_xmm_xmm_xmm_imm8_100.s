  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovdqu %xmm2, %xmm12                #  1     0     4      OPC=vmovdqu_xmm_xmm         
  movapd %xmm3, %xmm9                  #  2     0x4   5      OPC=movapd_xmm_xmm          
  vpunpckhdq %xmm12, %xmm12, %xmm5     #  3     0x9   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  movsldup %xmm9, %xmm7                #  4     0xe   5      OPC=movsldup_xmm_xmm        
  vpmovsxwd %xmm9, %xmm1               #  5     0x13  5      OPC=vpmovsxwd_xmm_xmm       
  vpunpckhdq %xmm5, %xmm7, %xmm13      #  6     0x18  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_64_128_xmm12_xmm13_xmm1  #  7     0x1c  5      OPC=callq_label             
  retq                                 #  8     0x21  1      OPC=retq                    
                                                                                         
.size target, .-target
