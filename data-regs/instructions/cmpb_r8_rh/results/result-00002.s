  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbw %ah, %cx                 #  1     0     4      OPC=movzbw_r16_rh   
  movq $0xffffffffffffffe0, %rdx  #  2     0x4   10     OPC=movq_r64_imm64  
  xorb %bl, %ch                   #  3     0xe   2      OPC=xorb_rh_r8      
  xchgb %cl, %dl                  #  4     0x10  2      OPC=xchgb_r8_r8     
  sbbb %dl, %ch                   #  5     0x12  2      OPC=sbbb_rh_r8      
  retq                            #  6     0x14  1      OPC=retq            
                                                                            
.size target, .-target
