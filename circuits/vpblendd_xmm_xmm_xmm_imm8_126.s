  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm2, %xmm3, %xmm4  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vmovups %xmm4, %xmm1        #  2     0x4  4      OPC=vmovups_xmm_xmm     
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
