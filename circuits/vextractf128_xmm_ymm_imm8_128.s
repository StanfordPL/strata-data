  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vbroadcastsd %xmm1, %ymm13        #  1     0     5      OPC=vbroadcastsd_ymm_xmm     
  vmovupd %ymm1, %ymm7              #  2     0x5   4      OPC=vmovupd_ymm_ymm          
  vfmsub132sd %xmm1, %xmm13, %xmm1  #  3     0x9   5      OPC=vfmsub132sd_xmm_xmm_xmm  
  movsd %xmm7, %xmm1                #  4     0xe   4      OPC=movsd_xmm_xmm            
  retq                              #  5     0x12  1      OPC=retq                     
                                                                                       
.size target, .-target
