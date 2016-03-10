  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  punpckhwd %xmm3, %xmm2      #  1     0    4      OPC=punpckhwd_xmm_xmm   
  vmaxps %xmm2, %xmm2, %xmm1  #  2     0x4  4      OPC=vmaxps_xmm_xmm_xmm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target