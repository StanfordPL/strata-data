  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  xorq %rbx, %rbx                   #  1     0     3      OPC=xorq_r64_r64     
  xaddb %bh, %bh                    #  2     0x3   3      OPC=xaddb_rh_rh      
  callq .move_128_064_xmm1_r10_r11  #  3     0x6   5      OPC=callq_label      
  orb %bh, %bh                      #  4     0xb   2      OPC=orb_rh_rh        
  callq .read_of_into_rbx           #  5     0xd   5      OPC=callq_label      
  cmovngq %r11, %rbx                #  6     0x12  4      OPC=cmovngq_r64_r64  
  retq                              #  7     0x16  1      OPC=retq             
                                                                               
.size target, .-target
