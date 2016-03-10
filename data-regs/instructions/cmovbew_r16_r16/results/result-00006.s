  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                    
.target:                          #        0     0      OPC=<label>               
  vxorps %xmm9, %xmm9, %xmm4      #  1     0     5      OPC=vxorps_xmm_xmm_xmm    
  vpbroadcastd %xmm4, %ymm6       #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  pmovzxdq %xmm6, %xmm3           #  3     0xa   5      OPC=pmovzxdq_xmm_xmm      
  callq .move_128_064_xmm3_r8_r9  #  4     0xf   5      OPC=callq_label           
  xchgw %r8w, %cx                 #  5     0x14  4      OPC=xchgw_r16_r16         
  cmovnal %r8d, %ebx              #  6     0x18  4      OPC=cmovnal_r32_r32       
  retq                            #  7     0x1c  1      OPC=retq                  
                                                                                  
.size target, .-target
