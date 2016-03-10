  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode              
.target:           #        0     0      OPC=<label>         
  setle %ch        #  1     0     3      OPC=setle_rh        
  movq $0x0, %rbx  #  2     0x3   10     OPC=movq_r64_imm64  
  xaddb %bh, %bl   #  3     0xd   3      OPC=xaddb_r8_rh     
  xorb %ch, %bl    #  4     0x10  2      OPC=xorb_r8_rh      
  retq             #  5     0x12  1      OPC=retq            
                                                             
.size target, .-target
