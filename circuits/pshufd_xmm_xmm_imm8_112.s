  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  movdqa %xmm2, %xmm1                  #  1     0     4      OPC=movdqa_xmm_xmm          
  vpunpckldq %xmm1, %xmm2, %xmm2       #  2     0x4   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x8   5      OPC=callq_label             
  punpckhdq %xmm2, %xmm1               #  4     0xd   4      OPC=punpckhdq_xmm_xmm       
  movsd %xmm10, %xmm1                  #  5     0x11  5      OPC=movsd_xmm_xmm           
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
