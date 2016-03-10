  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  movups %xmm3, %xmm8         #  1     0     4      OPC=movups_xmm_xmm      
  addsubpd %xmm8, %xmm2       #  2     0x4   5      OPC=addsubpd_xmm_xmm    
  vandps %xmm2, %xmm2, %xmm7  #  3     0x9   4      OPC=vandps_xmm_xmm_xmm  
  vmovups %xmm7, %xmm1        #  4     0xd   4      OPC=vmovups_xmm_xmm     
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
