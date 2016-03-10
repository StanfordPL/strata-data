  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovss %xmm1, %xmm2, %xmm7  #  1     0    4      OPC=vmovss_xmm_xmm_xmm  
  vmovddup %xmm7, %xmm11      #  2     0x4  4      OPC=vmovddup_xmm_xmm    
  movsd %xmm11, %xmm1         #  3     0x8  5      OPC=movsd_xmm_xmm       
  retq                        #  4     0xd  1      OPC=retq                
                                                                           
.size target, .-target
