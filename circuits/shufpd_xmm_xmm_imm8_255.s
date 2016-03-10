  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  vmovapd %xmm2, %xmm10   #  1     0    4      OPC=vmovapd_xmm_xmm   
  unpckhpd %xmm10, %xmm1  #  2     0x4  5      OPC=unpckhpd_xmm_xmm  
  retq                    #  3     0x9  1      OPC=retq              
                                                                     
.size target, .-target
