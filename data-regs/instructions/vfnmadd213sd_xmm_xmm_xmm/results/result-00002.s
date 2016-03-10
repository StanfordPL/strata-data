  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP  Bytes  Opcode                        
.target:                              #        0    0      OPC=<label>                   
  vpmovzxwd %xmm2, %xmm12             #  1     0    5      OPC=vpmovzxwd_xmm_xmm         
  vfnmsub213sd %xmm2, %xmm12, %xmm12  #  2     0x5  5      OPC=vfnmsub213sd_xmm_xmm_xmm  
  vfmadd213sd %xmm3, %xmm12, %xmm1    #  3     0xa  5      OPC=vfmadd213sd_xmm_xmm_xmm   
  retq                                #  4     0xf  1      OPC=retq                      
                                                                                         
.size target, .-target
