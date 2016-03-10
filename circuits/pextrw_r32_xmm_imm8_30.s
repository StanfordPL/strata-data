  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0x10, %rbx                          #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label      
  callq .move_008_016_r8b_r9b_bx            #  3     0xf   5      OPC=callq_label      
  orb %bh, %bl                              #  4     0x14  2      OPC=orb_r8_rh        
  cmovncw %r9w, %bx                         #  5     0x16  5      OPC=cmovncw_r16_r16  
  retq                                      #  6     0x1b  1      OPC=retq             
                                                                                       
.size target, .-target
