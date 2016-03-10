  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                      
.target:                            #        0    0      OPC=<label>                 
  vmovshdup %xmm1, %xmm15           #  1     0    4      OPC=vmovshdup_xmm_xmm       
  vpunpckhdq %xmm15, %xmm2, %xmm12  #  2     0x4  5      OPC=vpunpckhdq_xmm_xmm_xmm  
  punpcklqdq %xmm12, %xmm1          #  3     0x9  5      OPC=punpcklqdq_xmm_xmm      
  retq                              #  4     0xe  1      OPC=retq                    
                                                                                     
.size target, .-target
