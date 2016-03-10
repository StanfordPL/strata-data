  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vpxor %xmm1, %xmm1, %xmm4       #  1     0    4      OPC=vpxor_xmm_xmm_xmm      
  vunpcklpd %xmm4, %xmm4, %xmm15  #  2     0x4  4      OPC=vunpcklpd_xmm_xmm_xmm  
  movupd %xmm15, %xmm1            #  3     0x8  5      OPC=movupd_xmm_xmm         
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
