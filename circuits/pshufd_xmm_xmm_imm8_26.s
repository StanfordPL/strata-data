  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  movsldup %xmm2, %xmm1           #  1     0    4      OPC=movsldup_xmm_xmm        
  vpunpckldq %xmm1, %xmm2, %xmm9  #  2     0x4  4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpckhqdq %xmm9, %xmm1         #  3     0x8  5      OPC=punpckhqdq_xmm_xmm      
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
