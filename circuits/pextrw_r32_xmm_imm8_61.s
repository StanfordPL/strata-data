  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  movq $0x0, %rbx                     #  1     0     10     OPC=movq_r64_imm64  
  callq .move_byte_10_of_ymm1_to_r8b  #  2     0xa   5      OPC=callq_label     
  callq .move_byte_11_of_ymm1_to_r9b  #  3     0xf   5      OPC=callq_label     
  orb %bh, %bh                        #  4     0x14  2      OPC=orb_rh_rh       
  cmovsq %rbx, %rbx                   #  5     0x16  4      OPC=cmovsq_r64_r64  
  callq .move_008_016_r8b_r9b_bx      #  6     0x1a  5      OPC=callq_label     
  retq                                #  7     0x1f  1      OPC=retq            
                                                                                
.size target, .-target
