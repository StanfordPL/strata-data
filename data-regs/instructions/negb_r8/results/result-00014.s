  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffff80, %rcx  #  1     0     10     OPC=movq_r64_imm64  
  addb %bl, %ch                   #  2     0xa   2      OPC=addb_rh_r8      
  notb %ch                        #  3     0xc   2      OPC=notb_rh         
  xchgb %bl, %ch                  #  4     0xe   2      OPC=xchgb_rh_r8     
  callq .set_szp_for_bl           #  5     0x10  5      OPC=callq_label     
  retq                            #  6     0x15  1      OPC=retq            
                                                                            
.size target, .-target
