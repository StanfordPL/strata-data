  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  movq $0x20, %r8                               #  1     0     10     OPC=movq_r64_imm64     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0xa   5      OPC=callq_label        
  por %xmm1, %xmm1                              #  3     0xf   4      OPC=por_xmm_xmm        
  callq .move_byte_7_of_ymm1_to_r8b             #  4     0x13  5      OPC=callq_label        
  vmovmskpd %xmm5, %ebx                         #  5     0x18  4      OPC=vmovmskpd_r32_xmm  
  xorw %bp, %bp                                 #  6     0x1c  3      OPC=xorw_r16_r16       
  cmovlew %r8w, %bx                             #  7     0x1f  5      OPC=cmovlew_r16_r16    
  rclb $0x1, %bh                                #  8     0x24  2      OPC=rclb_rh_one        
  retq                                          #  9     0x26  1      OPC=retq               
                                                                                             
.size target, .-target
