  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovups %ymm1, %ymm5        #  1     0    4      OPC=vmovups_ymm_ymm     
  vmaxsd %xmm5, %xmm5, %xmm1  #  2     0x4  4      OPC=vmaxsd_xmm_xmm_xmm  
  retq                        #  3     0x8  1      OPC=retq                
                                                                           
.size target, .-target
