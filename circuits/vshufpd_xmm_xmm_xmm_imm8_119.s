  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  movups %xmm2, %xmm11            #  1     0    4      OPC=movups_xmm_xmm         
  unpckhpd %xmm11, %xmm11         #  2     0x4  5      OPC=unpckhpd_xmm_xmm       
  vunpckhpd %xmm3, %xmm11, %xmm1  #  3     0x9  4      OPC=vunpckhpd_xmm_xmm_xmm  
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
