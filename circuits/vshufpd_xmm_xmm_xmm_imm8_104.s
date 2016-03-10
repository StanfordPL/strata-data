  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  movddup %xmm2, %xmm4        #  1     0    4      OPC=movddup_xmm_xmm       
  vbroadcastsd %xmm3, %ymm5   #  2     0x4  5      OPC=vbroadcastsd_ymm_xmm  
  vmovsd %xmm4, %xmm5, %xmm1  #  3     0x9  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                        #  4     0xd  1      OPC=retq                  
                                                                             
.size target, .-target
