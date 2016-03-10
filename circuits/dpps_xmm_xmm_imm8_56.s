  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  mulps %xmm2, %xmm1                #  1     0     3      OPC=mulps_xmm_xmm           
  vpsubq %xmm2, %xmm2, %xmm14       #  2     0x3   4      OPC=vpsubq_xmm_xmm_xmm      
  vhaddps %xmm14, %xmm1, %xmm13     #  3     0x7   5      OPC=vhaddps_xmm_xmm_xmm     
  vpunpckldq %xmm13, %xmm14, %xmm6  #  4     0xc   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movlhps %xmm6, %xmm1              #  5     0x11  3      OPC=movlhps_xmm_xmm         
  addsubps %xmm14, %xmm1            #  6     0x14  5      OPC=addsubps_xmm_xmm        
  movhlps %xmm14, %xmm1             #  7     0x19  4      OPC=movhlps_xmm_xmm         
  retq                              #  8     0x1d  1      OPC=retq                    
                                                                                      
.size target, .-target
