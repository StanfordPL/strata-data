  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovdqu %ymm2, %ymm1  #  1     0     4      OPC=vmovdqu_ymm_ymm  
  movq %xmm1, %xmm4     #  2     0x4   4      OPC=movq_xmm_xmm     
  addsd %xmm4, %xmm1    #  3     0x8   4      OPC=addsd_xmm_xmm    
  movsd %xmm3, %xmm1    #  4     0xc   4      OPC=movsd_xmm_xmm    
  retq                  #  5     0x10  1      OPC=retq             
                                                                   
.size target, .-target
