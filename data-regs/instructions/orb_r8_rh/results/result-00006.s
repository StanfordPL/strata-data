  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                 #  Line  RIP   Bytes  Opcode               
.target:               #        0     0      OPC=<label>          
  orb %bl, %ah         #  1     0     2      OPC=orb_rh_r8        
  movsbw %ah, %cx      #  2     0x2   4      OPC=movsbw_r16_rh    
  movsbq %cl, %r15     #  3     0x6   4      OPC=movsbq_r64_r8    
  movslq %r15d, %r10   #  4     0xa   3      OPC=movslq_r64_r32   
  cmovcl %r10d, %ebx   #  5     0xd   4      OPC=cmovcl_r32_r32   
  cmovew %r10w, %r10w  #  6     0x11  5      OPC=cmovew_r16_r16   
  cmovnol %r10d, %ebx  #  7     0x16  4      OPC=cmovnol_r32_r32  
  retq                 #  8     0x1a  1      OPC=retq             
                                                                  
.size target, .-target
