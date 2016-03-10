  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movzbw %ah, %dx                 #  1     0     4      OPC=movzbw_r16_rh   
  movq $0xfffffffffffffffd, %rcx  #  2     0x4   10     OPC=movq_r64_imm64  
  testb %dh, %cl                  #  3     0xe   2      OPC=testb_r8_rh     
  setne %r15b                     #  4     0x10  4      OPC=setne_r8        
  negb %r15b                      #  5     0x14  3      OPC=negb_r8         
  sbbb %bh, %ah                   #  6     0x17  2      OPC=sbbb_rh_rh      
  retq                            #  7     0x19  1      OPC=retq            
                                                                            
.size target, .-target
