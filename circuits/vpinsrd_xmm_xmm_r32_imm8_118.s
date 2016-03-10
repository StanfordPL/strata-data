  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  movd %ebx, %xmm14                    #  1     0     5      OPC=movd_xmm_r32            
  movdqa %xmm2, %xmm3                  #  2     0x5   4      OPC=movdqa_xmm_xmm          
  vpbroadcastd %xmm14, %xmm12          #  3     0x9   5      OPC=vpbroadcastd_xmm_xmm    
  vpunpckhdq %xmm3, %xmm12, %xmm1      #  4     0xe   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  5     0x12  5      OPC=callq_label             
  movsd %xmm12, %xmm1                  #  6     0x17  5      OPC=movsd_xmm_xmm           
  retq                                 #  7     0x1c  1      OPC=retq                    
                                                                                         
.size target, .-target
