  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x7, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  rolw $0x1, %bx           #  2     0xa   3      OPC=rolw_r16_one    
  callq .read_sf_into_rcx  #  3     0xd   5      OPC=callq_label     
  addb %cl, %bh            #  4     0x12  2      OPC=addb_rh_r8      
  sete %bl                 #  5     0x14  3      OPC=sete_r8         
  retq                     #  6     0x17  1      OPC=retq            
                                                                     
.size target, .-target
