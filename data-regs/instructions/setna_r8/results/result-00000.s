  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP   Bytes  Opcode              
.target:            #        0     0      OPC=<label>         
  movq $0x10, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  setna %ah         #  2     0xa   3      OPC=setna_rh        
  xaddb %ah, %bl    #  3     0xd   3      OPC=xaddb_r8_rh     
  salb $0x1, %bl    #  4     0x10  2      OPC=salb_r8_one     
  salb $0x1, %bl    #  5     0x12  2      OPC=salb_r8_one     
  setp %bl          #  6     0x14  3      OPC=setp_r8         
  retq              #  7     0x17  1      OPC=retq            
                                                              
.size target, .-target
