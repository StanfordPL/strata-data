  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  mulss %xmm1, %xmm1          #  1     0     4      OPC=mulss_xmm_xmm       
  pandn %xmm1, %xmm1          #  2     0x4   4      OPC=pandn_xmm_xmm       
  vmulpd %xmm1, %xmm1, %xmm6  #  3     0x8   4      OPC=vmulpd_xmm_xmm_xmm  
  addpd %xmm6, %xmm1          #  4     0xc   4      OPC=addpd_xmm_xmm       
  retq                        #  5     0x10  1      OPC=retq                
                                                                            
.size target, .-target
