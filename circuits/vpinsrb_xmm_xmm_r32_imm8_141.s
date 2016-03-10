  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label        
  vzeroall                            #  2     0x5   3      OPC=vzeroall           
  decb %bh                            #  3     0x8   2      OPC=decb_rh            
  callq .move_064_128_r8_r9_xmm1      #  4     0xa   5      OPC=callq_label        
  cvtsd2sil %xmm12, %r8d              #  5     0xf   5      OPC=cvtsd2sil_r32_xmm  
  salw $0x1, %r8w                     #  6     0x14  4      OPC=salw_r16_one       
  cmovlel %ebx, %r9d                  #  7     0x18  4      OPC=cmovlel_r32_r32    
  callq .move_r9b_to_byte_13_of_ymm1  #  8     0x1c  5      OPC=callq_label        
  retq                                #  9     0x21  1      OPC=retq               
                                                                                   
.size target, .-target
