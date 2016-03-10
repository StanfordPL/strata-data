  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm5    #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  movaps %xmm5, %xmm9           #  2     0x4   4      OPC=movaps_xmm_xmm       
  vhaddpd %xmm9, %xmm9, %xmm11  #  3     0x8   5      OPC=vhaddpd_xmm_xmm_xmm  
  movddup %xmm11, %xmm1         #  4     0xd   5      OPC=movddup_xmm_xmm      
  retq                          #  5     0x12  1      OPC=retq                 
                                                                               
.size target, .-target
