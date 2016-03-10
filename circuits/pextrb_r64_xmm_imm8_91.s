  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9  #  1     0     5      OPC=callq_label     
  movq $0x3, %rbx                 #  2     0x5   10     OPC=movq_r64_imm64  
  bswap %r9d                      #  3     0xf   3      OPC=bswap_r32       
  rolb $0x1, %bh                  #  4     0x12  2      OPC=rolb_rh_one     
  andb %bl, %bh                   #  5     0x14  2      OPC=andb_rh_r8      
  xaddb %bl, %r9b                 #  6     0x16  4      OPC=xaddb_r8_r8     
  retq                            #  7     0x1a  1      OPC=retq            
                                                                            
.size target, .-target
