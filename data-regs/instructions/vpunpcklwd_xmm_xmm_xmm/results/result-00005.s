  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  punpcklwd %xmm3, %xmm2              #  1     0     4      OPC=punpcklwd_xmm_xmm  
  vmovupd %xmm2, %xmm1                #  2     0x4   4      OPC=vmovupd_xmm_xmm    
  vorps %xmm3, %xmm1, %xmm9           #  3     0x8   4      OPC=vorps_xmm_xmm_xmm  
  vmovmskpd %xmm9, %ebx               #  4     0xc   5      OPC=vmovmskpd_r32_xmm  
  sarb $0x1, %bl                      #  5     0x11  2      OPC=sarb_r8_one        
  callq .move_byte_3_of_rbx_to_r8b    #  6     0x13  5      OPC=callq_label        
  callq .move_r8b_to_byte_20_of_ymm1  #  7     0x18  5      OPC=callq_label        
  retq                                #  8     0x1d  1      OPC=retq               
                                                                                   
.size target, .-target
