  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpxor %xmm1, %xmm2, %xmm10  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  vmovups %xmm10, %xmm11      #  2     0x4  5      OPC=vmovups_xmm_xmm    
  movdqa %xmm11, %xmm1        #  3     0x9  5      OPC=movdqa_xmm_xmm     
  retq                        #  4     0xe  1      OPC=retq               
                                                                          
.size target, .-target
