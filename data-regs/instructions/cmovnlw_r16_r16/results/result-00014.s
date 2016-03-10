  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  cmovgew %cx, %bx                    #  1     0     4      OPC=cmovgew_r16_r16       
  movq $0xfffffffffffffffc, %rdx      #  2     0x4   10     OPC=movq_r64_imm64        
  vmovq %rdx, %xmm11                  #  3     0xe   5      OPC=vmovq_xmm_r64         
  vpbroadcastb %xmm11, %xmm8          #  4     0x13  5      OPC=vpbroadcastb_xmm_xmm  
  vaddpd %ymm8, %ymm8, %ymm1          #  5     0x18  5      OPC=vaddpd_ymm_ymm_ymm    
  callq .move_byte_26_of_ymm1_to_r8b  #  6     0x1d  5      OPC=callq_label           
  addb %r8b, %bl                      #  7     0x22  3      OPC=addb_r8_r8            
  retq                                #  8     0x25  1      OPC=retq                  
                                                                                      
.size target, .-target
