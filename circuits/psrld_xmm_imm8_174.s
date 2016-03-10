  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP   Bytes  Opcode                 
.target:                     #        0     0      OPC=<label>            
  movupd %xmm1, %xmm4        #  1     0     4      OPC=movupd_xmm_xmm     
  movdqu %xmm1, %xmm2        #  2     0x4   4      OPC=movdqu_xmm_xmm     
  vpxor %xmm4, %xmm2, %xmm2  #  3     0x8   4      OPC=vpxor_xmm_xmm_xmm  
  movq %xmm2, %xmm1          #  4     0xc   4      OPC=movq_xmm_xmm       
  retq                       #  5     0x10  1      OPC=retq               
                                                                          
.size target, .-target
