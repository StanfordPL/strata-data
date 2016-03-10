  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label     
  movq $0x40, %rax         #  2     0x5   10     OPC=movq_r64_imm64  
  addb %cl, %ah            #  3     0xf   2      OPC=addb_rh_r8      
  retq                     #  4     0x11  1      OPC=retq            
                                                                     
.size target, .-target
