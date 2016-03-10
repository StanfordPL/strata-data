  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  vmulpd %xmm2, %xmm1, %xmm3            #  1     0     4      OPC=vmulpd_xmm_xmm_xmm   
  callq .move_256_128_ymm3_xmm12_xmm13  #  2     0x4   5      OPC=callq_label          
  vsqrtsd %xmm13, %xmm12, %xmm3         #  3     0x9   5      OPC=vsqrtsd_xmm_xmm_xmm  
  movapd %xmm13, %xmm1                  #  4     0xe   5      OPC=movapd_xmm_xmm       
  addpd %xmm3, %xmm1                    #  5     0x13  4      OPC=addpd_xmm_xmm        
  retq                                  #  6     0x17  1      OPC=retq                 
                                                                                       
.size target, .-target
