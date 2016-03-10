  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffffc, %rax  #  1     0     10     OPC=movq_r64_imm64  
  setle %bh                       #  2     0xa   3      OPC=setle_rh        
  xchgw %ax, %ax                  #  3     0xd   2      OPC=xchgw_r16_ax    
  xaddb %al, %bh                  #  4     0xf   3      OPC=xaddb_rh_r8     
  negw %ax                        #  5     0x12  3      OPC=negw_r16        
  retq                            #  6     0x15  1      OPC=retq            
                                                                            
.size target, .-target
