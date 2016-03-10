  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwd %xmm2, %xmm2  #  1     0    5      OPC=vpmovzxwd_xmm_xmm  
  movups %xmm2, %xmm1     #  2     0x5  3      OPC=movups_xmm_xmm     
  retq                    #  3     0x8  1      OPC=retq               
                                                                      
.size target, .-target
