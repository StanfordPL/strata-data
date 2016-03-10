  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  vmovaps %xmm2, %xmm11             #  1     0     4      OPC=vmovaps_xmm_xmm         
  vpunpckhdq %xmm2, %xmm11, %xmm13  #  2     0x4   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movdqu %xmm2, %xmm10              #  3     0x8   5      OPC=movdqu_xmm_xmm          
  vminsd %xmm11, %xmm10, %xmm1      #  4     0xd   5      OPC=vminsd_xmm_xmm_xmm      
  vmovss %xmm1, %xmm13, %xmm13      #  5     0x12  4      OPC=vmovss_xmm_xmm_xmm      
  punpcklqdq %xmm13, %xmm1          #  6     0x16  5      OPC=punpcklqdq_xmm_xmm      
  retq                              #  7     0x1b  1      OPC=retq                    
                                                                                      
.size target, .-target
