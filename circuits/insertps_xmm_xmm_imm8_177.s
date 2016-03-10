  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  xorl %edi, %edi                 #  1     0    2      OPC=xorl_r32_r32            
  cvtsi2ssl %edi, %xmm1           #  2     0x2  4      OPC=cvtsi2ssl_xmm_r32       
  vpunpckhdq %xmm2, %xmm1, %xmm9  #  3     0x6  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm9, %xmm1         #  4     0xa  5      OPC=punpcklqdq_xmm_xmm      
  retq                            #  5     0xf  1      OPC=retq                    
                                                                                   
.size target, .-target
