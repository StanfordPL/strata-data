  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movq %xmm3, %rcx        #  1     0     5      OPC=movq_r64_xmm       
  vmovq %rcx, %xmm1       #  2     0x5   5      OPC=vmovq_xmm_r64      
  punpcklwd %xmm1, %xmm2  #  3     0xa   4      OPC=punpcklwd_xmm_xmm  
  vmovdqu %xmm2, %xmm1    #  4     0xe   4      OPC=vmovdqu_xmm_xmm    
  retq                    #  5     0x12  1      OPC=retq               
                                                                       
.size target, .-target
