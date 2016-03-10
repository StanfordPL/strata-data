  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vmovupd %xmm2, %xmm14               #  1     0     4      OPC=vmovupd_xmm_xmm     
  vorpd %xmm3, %xmm3, %xmm11          #  2     0x4   4      OPC=vorpd_xmm_xmm_xmm   
  vminpd %ymm11, %ymm14, %ymm1        #  3     0x8   5      OPC=vminpd_ymm_ymm_ymm  
  callq .move_byte_25_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label         
  callq .move_r8b_to_byte_17_of_ymm1  #  5     0x12  5      OPC=callq_label         
  retq                                #  6     0x17  1      OPC=retq                
                                                                                    
.size target, .-target
