  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  movq $0xa9, %rbx                              #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0xa   5      OPC=callq_label      
  addb %bl, %bh                                 #  3     0xf   2      OPC=addb_rh_r8       
  orb %bh, %bl                                  #  4     0x11  2      OPC=orb_r8_rh        
  cmovnol %r11d, %ebx                           #  5     0x13  4      OPC=cmovnol_r32_r32  
  retq                                          #  6     0x17  1      OPC=retq             
                                                                                           
.size target, .-target
