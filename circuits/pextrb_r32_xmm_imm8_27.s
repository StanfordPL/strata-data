  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vminss %xmm1, %xmm1, %xmm14         #  1     0     4      OPC=vminss_xmm_xmm_xmm    
  movhlps %xmm14, %xmm14              #  2     0x4   4      OPC=movhlps_xmm_xmm       
  vpbroadcastd %xmm14, %xmm1          #  3     0x8   5      OPC=vpbroadcastd_xmm_xmm  
  callq .move_byte_15_of_ymm1_to_r8b  #  4     0xd   5      OPC=callq_label           
  movzbl %r8b, %ebx                   #  5     0x12  4      OPC=movzbl_r32_r8         
  retq                                #  6     0x16  1      OPC=retq                  
                                                                                      
.size target, .-target
